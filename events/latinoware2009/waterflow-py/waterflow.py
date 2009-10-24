import unittest
import sys

class Waterflow():
	def __init__(self, depositos, vazao, litros):
		self.litros = litros
		self.vazao = vazao
		
	def flow(self):
		primeiro_elemento = [self.litros, 0]
		ultimo_elemento = [0, self.litros]
		
		if(self.litros == 0):
			return [primeiro_elemento]
			
		if(self.vazao[0] == self.litros):
			return [primeiro_elemento, ultimo_elemento]
		
		for passo in sels
		
		return [primeiro_elemento, [primeiro_elemento[0]-self.vazao[0],ultimo_elemento[0]+self.vazao[0]], ultimo_elemento]
		
	def acabou(self):
		return True

class WaterFlowTest(unittest.TestCase):
	def test_2_depositos_vazao_5_litros_comecando_com_5_litros(self):
		wf = Waterflow(2, [5], 5)
		self.assertEquals([[5,0],[0,5]], wf.flow())
	
	def teste_2_depositos_vazao_4_litros_comecando_com_4_litros(self):
		wf = Waterflow(2, [4], 4)
		self.assertEquals([[4,0], [0,4]], wf.flow())
	
	def teste_3(self):
		'''2_depositos_vazao_4_litros_comecando_com_0_litros'''
		wf = Waterflow(2, [4], 0)
		self.assertEquals([[0, 0]], wf.flow())
	
	def teste_4(self):
  		'''2_depositos_vazao_3_litros_comecando_com_4_litros'''							   				       
		wf = Waterflow(2, [3], 4)
		self.assertEquals([[4,0], [1,3], [0,4]], wf.flow())
		
	def test5(self):
		"""2 depositos vazao 2 litros comecando com 5 litros"""
		wf = Waterflow(2, [2], 5)
		self.assertEquals([[5,0], [3,2], [1,4], [0,5]], wf.flow())
			
	def test_acabou(self):
		'''testa o metodo responsavel por verificar se tem agua'''
		# usando valores seguros para o teste di teste_3
		wf = Waterflow(2, [4], 0)
		wf.flow()
		self.assertTrue(wf.acabou())
		
		
if __name__ == '__main__':
	unittest.main()
