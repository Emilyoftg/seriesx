if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Emilyoftg/seriesx.git /seriesx
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /seriesx
fi
cd /seriesx
pip3 install -U -r requirements.txt
echo "Starting seriesx...."
python3 bot.py
