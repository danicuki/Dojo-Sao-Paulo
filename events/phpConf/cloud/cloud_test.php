<?php
require_once 'PHPUnit/Framework.php';
require_once 'cloud.php';

class CloudTest extends PHPUnit_Framework_TestCase
{
    public function testDivideUmCloudDe1GbEmUmUnicoServidor()
    {
				$cloud = new Cloud();
				$divisao = $cloud->divide(1, array(1));
				$this->assertEquals(array(array(1)),$divisao);
    }

    public function testDivideDoisCloudsDe1GbEmUmUnicoServidor()
    {
				$cloud = new Cloud();
				$divisao = $cloud->divide(1, array(1,1));
				$this->assertEquals(array(array(1,1)),$divisao);
    }

		public function testDivideDoisCloudsDe1GbEmDoisServidores()
    {
				$cloud = new Cloud();
				$divisao = $cloud->divide(2, array(1,1));
				$this->assertEquals(array(array(1), array(1)),$divisao);
    }

		public function testDivideDoisCloudsDe2GbEmDoisServidores()
    {
				$cloud = new Cloud();
				$divisao = $cloud->divide(2, array(2,2));
				$this->assertEquals(array(array(2), array(2)),$divisao);
    }

		public function testDivideTresCloudsDe1GbEmTresServidores()
    {
				$cloud = new Cloud();
				$divisao = $cloud->divide(3, array(1, 1, 1));
				$this->assertEquals(array(array(1), array(1), array(1)),$divisao);
    }

		public function testDivide2CloudDe2GbE1CloudDe4GbEm2Servs()
		{
			$cloud = new Cloud();
			$divisao = $cloud->divide(2, array(2, 2, 4));
			$this->assertEquals(array(array(2,2), array(4)),$divisao);
		}
}
?>