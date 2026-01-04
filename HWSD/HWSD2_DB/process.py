import pandas_access as mdb

db_filename = 'HWSD2.mdb'

# Listing the tables.
for tbl in mdb.list_tables(db_filename):
  print(tbl)

print("______")
# Read a small table.
df = mdb.read_table(db_filename, "D_TEXTURE")
print(df)
