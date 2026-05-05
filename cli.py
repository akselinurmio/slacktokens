import json
from slacktokens import get_tokens_and_cookie

if __name__ == "__main__":
    print(json.dumps(get_tokens_and_cookie(), indent=2))
