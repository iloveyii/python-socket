import cv2
import numpy as np
import base64
import time

cap = cv2.VideoCapture(0)
fourcc = cv2.VideoWriter_fourcc(*'XVID')
out = cv2.VideoWriter('color.avi', fourcc, 20.0, (640, 480))

counter = 1
delay = 10

while True:
    ret, frame = cap.read()

    # gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    # out.write(frame)
    if counter % delay == 0:
        # s = base64.b64encode(frame)
        print(counter % delay, counter)
        # cv2.imshow('frame', frame)
        cv2.imwrite(str(1) + '.png', frame)

    counter += 1
    # cv2.imshow('gray', gray)
    # time.sleep(5)

    if cv2.waitKey(1) & 0xFF == ord('g'):
        break

cap.release()
out.release()
cv2.destroyAllWindows()
