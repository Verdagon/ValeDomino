
VALEC_DIR="$1"
if [ "$VALEC_DIR" == "" ]; then
  echo "Please supply the bootstrapping valec directory."
  echo "Example: ~/TheValeCompiler"
  exit
fi
shift;

# ./build.sh $VALEC_DIR
for s in `cat ./test_requests.txt`; do curl http://localhost:8000/request -L -H "Content-Type: application/json" -X POST -d "$s"; done
