<?php
set_time_limit(0);
class ProcessStatusupdateCommand extends CConsoleCommand
{
    public function actionIndex()
    {       

         $settings = OptionsTools::find(['website_timezone_new']);
         $timezone = isset($settings['website_timezone_new'])?$settings['website_timezone_new']:'';
         if(!empty($timezone)){            
            Yii::app()->timeZone=$timezone;	
         }         

         $ordersToUpdate = [];
         
         CommonUtility::SetTimezone();
         CommonUtility::mysqlSetTimezone(); 

         $model = AR_admin_meta::model()->findAll("meta_name=:meta_name",[
            ':meta_name'=>'automated_status'
         ]);
         /* SAFETY: never let the auto-status cron touch finalized statuses.
            Finalized = the merchant or the customer made an explicit final
            decision and the order should not be silently rewritten by a
            cron rule. Without this guard, a misconfigured admin_meta rule
            could revert "complete"/"delivered"/"cancelled" orders. */
         $FINALIZED_STATUSES = ['complete','delivered','cancelled','refunded','rejected','delivery failed'];

         if($model){
            foreach ($model as $items) {
                $status_from = $items['meta_value'];
                $status_to = $items['meta_value1'];
                $time_afterupdate = $items['meta_value2'];

                if(in_array(strtolower((string)$status_from), $FINALIZED_STATUSES)
                   || in_array(strtolower((string)$status_to), $FINALIZED_STATUSES)){
                    echo "Skipped rule {$status_from} -> {$status_to} (finalized status protected)\n";
                    continue;
                }

                $sqlSelect = "
                SELECT order_id,order_uuid
                FROM {{ordernew}}
                WHERE status = :status_from
                AND TIMESTAMPDIFF(MINUTE, date_created, NOW()) >= :time_afterupdate
                AND date_created >= NOW() - INTERVAL 2 DAY
                LIMIT 0,50
                ";
                $ordersToUpdate = Yii::app()->db->createCommand($sqlSelect)
                ->bindParam(':status_from', $status_from)
                ->bindParam(':time_afterupdate', $time_afterupdate)
                ->queryAll();

                if (!empty($ordersToUpdate)) {
                    $stmt = "
                    UPDATE {{ordernew}}
                    SET status = :status_to, date_modified = NOW()
                    WHERE status = :status_from
                    AND TIMESTAMPDIFF(MINUTE, date_created, NOW()) >= :time_afterupdate
                    ";
                    $rowsAffected = Yii::app()->db->createCommand($stmt)
                    ->bindParam(':status_to', $status_to)
                    ->bindParam(':status_from', $status_from)
                    ->bindParam(':time_afterupdate', $time_afterupdate)
                    ->execute();
                    echo "Number of rows affected: " . $rowsAffected;
                    echo "\n";
                } else {
                    echo "No orders to update\n";
                }

                if(is_array($ordersToUpdate) && count($ordersToUpdate)>=1){
                    foreach ($ordersToUpdate as $items) {                                 
                        $history = new AR_ordernew_history;
                        $history->order_id = $items['order_id'];
                        $history->status = $status_to;                        
                        $history->change_by = 'system';
                        $history->save();

                        CommonUtility::pushJobs("OrderChangestatus",[
                            'order_id'=>$items['order_id'],
                            'order_uuid'=>$items['order_uuid'],
                            'language'=>Yii::app()->language,
                            'auto_update'=>1
                        ]);
                        CommonUtility::pushJobs("SendTokitchen",[
                            'order_id'=>$items['order_id'],
                            'order_uuid'=>$items['order_uuid'],
                            'language'=>Yii::app()->language
                        ]);
                        CommonUtility::pushJobs("Trackorder",[
                            'order_id'=>$items['order_id'],
                            'order_uuid'=>$items['order_uuid'],
                            'language'=>Yii::app()->language
                        ]);
                        CommonUtility::pushJobs("DebitDiscount",[
                            'order_id'=>$items['order_id'],
                            'order_uuid'=>$items['order_uuid'],
                            'language'=>Yii::app()->language
                        ]);
                    }
                }

            }
            // end foreach                    

         }
    }
}