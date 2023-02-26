if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/mrsns2503/SNS_P_FILTER /SNS_P_FILTER
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SNS_P_FILTER
fi
cd /SNS_P_FILTER
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
