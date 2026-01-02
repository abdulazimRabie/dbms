db_home_path=$1
db_name=$2;
cd ../tables/
echo $(pwd)
echo " ____________________________________________"
echo "        TABLE : ${db_name^^}                  "
echo "|____________________________________________|"
echo "| 1. Create Table                            |"
echo "| 2. Drop Table                              |"
echo "| 3. List Tables                             |"
echo "| 4. Insert Row                              |" 
echo "| 5. Select From Table                       |" # whole data OR specific record
echo "| 6. Alter Table (Rename)                    |"
echo "| 7. Add Column                              |"
echo "| 8. Back to Databases Menu                  |"
echo "| 9. Exit                                    |"
echo "|____________________________________________|"