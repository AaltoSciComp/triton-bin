# triton-bin

Utility scripts for managing the Triton HPC cluster (Slurm-based).

## User tools (bin/)

**ai_agents.sh** detects AI coding agents running on a login node by inspecting running processes.

**enforce_group_rights_for_dir** enforces group ownership and read/write permissions recursively on a directory.

**quotafix** finds and fixes group permission and quota problems in shared directories, printing issues by default and optionally applying fixes.

**seff-user-report** generates a per-user Slurm job efficiency report showing CPU and memory usage over a configurable time window.

**sjupyter** launches JupyterLab or Notebook inside a Slurm job, handling module loading and tunnel setup automatically.

**submit_job_queue** submits a Slurm script N times in a sequential dependency chain, so each job starts only after the previous one finishes.

**triton-record-environment** snapshots the runtime environment (loaded modules, Python packages, MATLAB version, etc.) to a file for reproducibility.

## Admin tools (sbin/)

**quotafix-rbh** is the root-level counterpart to quotafix, using `rbh-find` (Robinhood) to fix permissions across large project directories.

**slurm2sql-efficiency-report** produces a cluster-wide efficiency summary across all users, highlighting the most wasteful jobs by CPU and memory.

## License

MIT
