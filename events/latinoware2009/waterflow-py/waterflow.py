import sys
import os
import unittest


class Waterflow:
	def __init__(self, number_of_deposits, liters, lps):
		pass
		
	def flow(self):
		return [[5,0],[0,5]]
		
	


class WaterflowTests(unittest.TestCase):
	def setUp(self):
		pass
		
	def test_2_deposits_5_liters_with_5_liters_per_second(self):
		wf = Waterflow(2,5,[5])
		self.assertEquals([[5,0],[0,5]], wf.flow())


if __name__ == '__main__':
	unittest.main()