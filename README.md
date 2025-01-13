# gtfs-duckdb
Script that gives you the ability to query [GTFS](https://github.com/google/transit) like a database.

# Prerequisites
- [ASDF version manager](https://asdf-vm.com/)
- Bash 

# Installation
1. Clone the repository
2. In the repository directory, run `asdf install`
3. Make sure the script is executable (e.g. `chmod +x ./generate_duckdb_sql.sh` in Unix-like shells)
4. Run the script against an unzipped GTFS directory e.g. `./genereate_duckdb_sql.sh ~/jd/path/to/gtfs/folder output_db`
5. This launches a DuckDB shell, where you can query GTFS like a SQL database

