#!/usr/bin/env bash
#step 1
# Ask user input muhizi-hue
echo "testing up"
read input

# Parent directory
parent_dir="attendance_tracker_${input}"

# Create directory structure
mkdir -p "$parent_dir/Helpers"
mkdir -p "$parent_dir/reports"

# Create required files
touch "$parent_dir/attendance_checker.py"
touch "$parent_dir/Helpers/assets.csv"
touch "$parent_dir/Helpers/config.json"
touch "$parent_dir/reports/reports.log"

echo "Directory architecture created successfully."

# Display structure
tree "$parent_dir"

<<<<<<< HEAD
cat <<EOF >"$parent_dir/reports/reports,log"[2026-02-06 18:10:01.469363] ALERT SENT TO bob@example.com: URGENT: Bob Smith, your attendance is 46.7%. You will fail this class.
[2026-02-06 18:10:01.469424] ALERT SENT TO charlie@example.com: URGENT: Charlie Davis, your attendance is 26.7%. You will fail this class.

cat<<EOF > "$parent_dir/Helpers/confi.json"{
      "thresholds": {
=======
cat <<EOF > "$parent_dir/reports"[2026-02-06 18:10:01.469363] ALERT SENT TO bob@example.com: URGENT: Bob Smith, your attendance is 46.7%. You will fail this class.
[2026-02-06 18:10:01.469424] ALERT SENT TO charlie@example.com: URGENT: Charlie Davis, your attendance is 26.7%. You will fail this class.

cat <<EOF > parent_dir/Helpers/config.json"{
    "thresholds": {
>>>>>>> 908d5bf3d40b52f27114c9c0aa761cacfa291a22
        "warning": 75,
        "failure": 50
    },
    "run_mode": "live",
<<<<<<< HEAD
    "total_sessions": 1s
}
=======

cat <<EOF >"$parent_dir/Helpers/assets" Email,Names,Attendance Count,Absence Count
=======
    "total_sessions": 15
<<<<<<< HEAD
}"

=======

>>>>>>> c03707929522fb357a15b374d35dc4641fdec0e8
cat <<EOF >$parent_dir/Helpers/assets "Email,Names,Attendance Count,Absence Count
>>>>>>> 908d5bf3d40b52f27114c9c0aa761cacfa291a22
alice@example.com,Alice Johnson,14,1
bob@example.com,Bob Smith,7,8
charlie@example.com,Charlie Davis,4,11
<<<<<<< HEAD
<<<<<<< HEAD
diana@example.com,Diana Prince,15,0
=======
diana@example.com,Diana Prince,15,0" 
>>>>>>> 908d5bf3d40b52f27114c9c0aa761cacfa291a22

cat > attendance_checker.py << EOF 
=======
diana@example.com,Diana Prince,15,0" >assets.csv

 cat > atttendance_checker.py << EOF
>>>>>>> c03707929522fb357a15b374d35dc4641fdec0e8
import csv
import json
import os
from datetime import datetime

def run_attendance_check():
    # 1. Load Config
    with open('Helpers/config.json', 'r') as f:
        config = json.load(f)

    # 2. Archive old reports.log if it exists
    if os.path.exists('reports/reports.log'):
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        os.rename('reports/reports.log', f'reports/reports_{timestamp}.log.archive')

    # 3. Process Data
    with open('Helpers/assets.csv', mode='r') as f, open('reports/reports.log', 'w') as log:
        reader = csv.DictReader(f)
        total_sessions = config['total_sessions']
<<<<<<< HEAD

        log.write(f"--- Attendance Report Run: {datetime.now()} ---\n")

=======
        
        log.write(f"--- Attendance Report Run: {datetime.now()} ---\n")
        
>>>>>>> c03707929522fb357a15b374d35dc4641fdec0e8
        for row in reader:
            name = row['Names']
            email = row['Email']
            attended = int(row['Attendance Count'])
<<<<<<< HEAD

            # Simple Math: (Attended / Total) * 100
            attendance_pct = (attended / total_sessions) * 100

=======
            
            # Simple Math: (Attended / Total) * 100
            attendance_pct = (attended / total_sessions) * 100
            
>>>>>>> c03707929522fb357a15b374d35dc4641fdec0e8
            message = ""
            if attendance_pct < config['thresholds']['failure']:
                message = f"URGENT: {name}, your attendance is {attendance_pct:.1f}%. You will fail this class."
            elif attendance_pct < config['thresholds']['warning']:
                message = f"WARNING: {name}, your attendance is {attendance_pct:.1f}%. Please be careful."
<<<<<<< HEAD

=======
            
>>>>>>> c03707929522fb357a15b374d35dc4641fdec0e8
            if message:
                if config['run_mode'] == "live":
                    log.write(f"[{datetime.now()}] ALERT SENT TO {email}: {message}\n")
                    print(f"Logged alert for {name}")
                else:
                    print(f"[DRY RUN] Email to {email}: {message}")

if __name__ == "__main__":
    run_attendance_check()
EOF

<<<<<<< HEAD
step 3
#inputfor the archive name
echo-p "enter the name for the archive"
project_dir="attendance_tracker_workdir"

#define the cleanup_function
cleanup_on_interrupt() {
echo-e"\n\n[!] interrupt delected!safeguarding current state..."

archive_name="attendance_tracker_$(user imput)_archive.tar.gz

#package directory if it exist

if{-d"$project_dir"};then
tar-czf"$archive_name" "project_dir"
echo "[+] state packaged into = $archive_name"

#delet the incomplete directory

rm -fr "$project_dir"
echo "[+] workspace cleaned".
else
  echo "[-] no directory to archive"
fi

exist

}
#set the trap
# signit is triggered

step 2
#The prompt for the user
echo "Do you want to update attendance threshold? (y/n)"
read take

if [ "$take"= "y"] || [ "$take"= "Y"]; then

  #prompt showing warning threshold
  echo "Current warning threshlod is 75%. Enter new warning threshold( or press enter to keep default):"
  read warning_threshold
  warning_threshold=${warning_threshold:-75}

  #prompt showing failure threshold
  echo "Current failure threshold is 50%. Enter new failure threshold ( or press enter to keep default):"
  read failure_threshold
  failure_threshold=${default_threshold:-50}

  #Using sed to update config.json
  sed-1 "s/\"warning\":\".*\"/\"warning\":\"$warning_threshold\"/g"config.json
  sed-1 "s/\"failure\":\".*\"/\"failure\":\"$failure_threshold\"/g"config.json

  echo "Threshold updated successfully in config.json"
else
  echo "No changes made."
fi

 step 4
 #verifying if python3 is installed
  if python3 version > /dev/null 2>&1; then
	  echo "success: python3 is installed on the system."
  else
	  echo "warning: python3 is not found. install it to continue.'
#Verify the application directory structure
if [[ -f "attendance_checker.py" -f "assets.csv" -f "config.json" ]]; then
    echo "{ok] All application files are present in the directory."
else
    echo "Warning: Required files are missing from the directory."
fi
