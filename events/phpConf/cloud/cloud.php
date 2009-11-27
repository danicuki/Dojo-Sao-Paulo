<?php

class Cloud
{
    public function divide($servidores, $clouds){
    	$serv = array();

      // se for 1 servidor fisico
			if ($servidores == 1){
				return array($clouds);
			}
			
			$divisao = count($clouds) / $servidores;
			
			// se num de clouds = num de servers
			if ($divisao == 1) {
			  for ($i=0; $i<count($clouds); $i++) {
				  $serv[] = array($clouds[$i]);
			  }
				return $serv;
		  }
		  
		  if ($divisao > 1) {
		  	throw new Exception ('Não divisível');
		  }
		  if ($divisao < 1) {
			  $soma = 0;
				for ($n=0; $n<count($clouds); $n++){
					$soma = $soma + $clouds[$n];
				} 
				if ($soma%$servidores)
		  }
		  

    }
}
?>