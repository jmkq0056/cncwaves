#!/usr/bin/env python3
"""Clear npm, Python, Xcode, and Gradle caches on macOS."""

import subprocess
import shutil
import os
from pathlib import Path

HOME = Path.home()

def run(cmd, shell=False):
    print(f"  $ {cmd if isinstance(cmd, str) else ' '.join(cmd)}")
    try:
        subprocess.run(cmd, shell=shell, check=True, capture_output=True, text=True)
        print("    done")
    except subprocess.CalledProcessError as e:
        print(f"    failed: {e.stderr.strip() or e}")
    except FileNotFoundError:
        print("    skipped (command not found)")

def on_rm_error(func, path, exc_info):
    """Handle permission errors during rmtree."""
    os.chmod(path, 0o777)
    func(path)

def rm_dir(path):
    p = Path(path).expanduser()
    if p.exists():
        try:
            size = sum(f.stat().st_size for f in p.rglob("*") if f.is_file()) / (1024 * 1024)
        except (PermissionError, OSError):
            size = 0
        print(f"  removing {p} ({size:.0f} MB)")
        try:
            shutil.rmtree(p, onerror=on_rm_error)
            print("    done")
        except Exception as e:
            # fallback to rm -rf
            print(f"    rmtree failed, trying rm -rf...")
            subprocess.run(["rm", "-rf", str(p)], check=False)
            print("    done (rm -rf)")
    else:
        print(f"  {p} not found, skipping")

def rm_pattern(root, pattern):
    root = Path(root).expanduser()
    if not root.exists():
        return
    for p in root.rglob(pattern):
        if p.is_dir():
            shutil.rmtree(p)
        elif p.is_file():
            p.unlink()

def main():
    # --- npm ---
    print("\n=== npm cache ===")
    run(["npm", "cache", "clean", "--force"])
    rm_dir(HOME / ".npm")

    # --- Python ---
    print("\n=== Python cache ===")
    run(["pip", "cache", "purge"])
    run(["pip3", "cache", "purge"])
    rm_dir(HOME / "Library/Caches/pip")
    # __pycache__ and .pyc in current project
    print("  removing __pycache__ / .pyc in current directory tree")
    rm_pattern(".", "__pycache__")
    rm_pattern(".", "*.pyc")

    # --- Xcode ---
    print("\n=== Xcode cache ===")
    rm_dir(HOME / "Library/Developer/Xcode/DerivedData")
    rm_dir(HOME / "Library/Developer/Xcode/Archives")
    rm_dir(HOME / "Library/Developer/Xcode/iOS DeviceSupport")
    rm_dir(HOME / "Library/Caches/com.apple.dt.Xcode")
    run(["xcrun", "simctl", "delete", "unavailable"])

    # --- Gradle ---
    print("\n=== Gradle cache ===")
    rm_dir(HOME / ".gradle/caches")
    rm_dir(HOME / ".gradle/daemon")
    rm_dir(HOME / ".gradle/wrapper/dists")
    # Project-level .gradle and build dirs
    for d in Path(".").rglob(".gradle"):
        if d.is_dir():
            print(f"  removing project-level {d}")
            shutil.rmtree(d)
    for d in Path(".").rglob("build"):
        if d.is_dir() and (d / "generated").exists() or (d / "intermediates").exists():
            print(f"  removing project-level {d}")
            shutil.rmtree(d)

    print("\n=== All caches cleared ===\n")

if __name__ == "__main__":
    main()
