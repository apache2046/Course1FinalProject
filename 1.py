import cv2
import numpy as np
a1 = cv2.imread("controller_output/forward_speed.png")
a2 = cv2.imread("controller_output/throttle_output.png")
a3 = cv2.imread("controller_output/brake_output.png")
a4 = cv2.imread("controller_output/steer_output.png")
a=[a1,a2,a3,a4]
a=np.vstack(a)
cv2.imwrite("combined.png", a)
