<?php

class Cloud 
{
    public function divide($servidores,$clouds)
    {
			if ($servidores == 1)	return array($clouds);
			return array(array($clouds[0]), array($clouds[1]));
    }
}
?>