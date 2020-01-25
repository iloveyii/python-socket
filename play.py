import numpy as np
import cv2

cap = cv2.VideoCapture('h.mp4')

while (cap.isOpened()):
    ret, frame = cap.read()

    if ret == True:
        cv2.imshow('frame', frame)

    if cv2.waitKey(1) & 0xFF == ord('g'):
        break

cap.release()
cv2.destroyAllWindows()
