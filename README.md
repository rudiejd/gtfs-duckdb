# gtfs-duckdb
Script that gives you the ability to query [GTFS](https://github.com/google/transit) like a database.

This is just a simple bash script to wrap [DuckDB](https://duckdb.org/). I was preivously using [node-gtfs](https://github.com/BlinkTagInc/node-gtfs) to import GTFS files, but found that DuckDB was a lot faster. I was just annoyed with writing the SQL to load the GTFS feed into DuckDb every time, hence this simple script.

# Prerequisites
- [ASDF version manager](https://asdf-vm.com/)
- Bash 

# Installation
1. Clone the repository
2. In the repository directory, run `asdf install`
3. Make sure the script is executable (e.g. `chmod +x ./generate_duckdb_sql.sh` in Unix-like shells)
4. Run the script against an unzipped GTFS directory e.g. `./genereate_duckdb_sql.sh ~/jd/path/to/gtfs/folder output_db`
5. This launches a DuckDB shell, where you can query GTFS like a SQL database
6. There are two outputs from the script:
    - a DuckDB database. You can open this database by running `duckdb .output_db` 
    - a `.duckdb.sql` file. This tells DuckDB how to create your database. You can use this later if you need to recreate or change the DB

