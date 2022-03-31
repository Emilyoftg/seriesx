if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Emilyoftg/newdq.git /newdq
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /newdq
fi
cd /newdq
pip3 install -U -r requirements.txt
echo "Starting DQ...."
python3 bot.py
