<?php
require_once 'PHPUnit/Framework.php';
require_once 'cloud.php';

class CloudTest extends PHPUnit_Framework_TestCase
{
    public function testDivideUmCloudDe4GbEmUmUnicoServidor()
    {
				$cloud = new Cloud();
				$divisao = $cloud->divide(1, array(4));
				$this->assertEquals(array(array(4)), $divisao);
    }

    public function testDivide2CloudsDe1GbEmDoisServidores()
    {
				$cloud = new Cloud();
				$divisao = $cloud->divide(2, array(1,1));
				$this->assertEquals(array(array(1), array(1)), $divisao);
    }
}
?>