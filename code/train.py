
#!/usr/bin/env python3.6

import tensorflow as tf
import numpy as np
import datetime
import random
import keras
import time
import json
import sys
import os


from config import Config


timestamp	= datetime.datetime.now().strftime("%Y%m%d-%H%M%S")

with open("result.txt", "a") as f:
	print("Hello World!", file=f)
	print(datetime.datetime.now().strftime("%Y%m%d-%H%M%S"), file=f)


print('DONE')
