<?php 
	
	require('fpdf.php');
	require('connection.php');
	
	class Extension extends FPDF{
		public $Epage;
		public $Etable;
		public $Efields;
		public $x_axis = 5;
		public $y_axis = 30;
		public $align = array();
		public $width = array();
		public $con;
		
		public function __construct($pages,$measures,$papers,$tables,$fields){
			$this->con = new Connection();
			$this->Epage = $pages;
			$this->Etable = $tables;
			$this->Efields = $fields;
			parent::__construct($pages,$measures,$papers);
			$this->add_header();
			$this->add_table_header();	
			$this->add_contents();
		}
		
		public function add_header(){
			$this->AddPage();
			$this->SetFont('Tahoma','B',24);
			$this->SetTextColor(0,0,0);
			$this->text($this->x_axis,20,$this->Etable);
								
		}
		
		public function add_table_header(){
			$total = 0;
			
			foreach($this->Efields as $row){
				$current_w = strlen($row)*3+5;
				$result = $this->con->query("SELECT MAX(LENGTH($row)) FROM ".$this->con->database.'.'.$this->Etable);
				$this->align[] = 'C';
				
				if((mysql_result($result,0)*3+5) > $current_w)
					$current_w = mysql_result($result,0)*3+5;

				$this->width[] = $current_w;
				$total +=  $current_w;
				
			}
			$this->SetFillColor(0,0,0);	
			$this->Rect($this->x_axis,$this->y_axis,$total,$this->x_axis,'FD');
			$this->SetTextColor(255,255,255);
			$this->SetRectFill(1,'');
			$this->SetFont('Tahoma','B',12);
			$this->SetXY($this->x_axis,$this->y_axis);
			$this->SetAligns($this->align);
			$this->SetWidths($this->width);
			$this->Row($this->Efields);
			$this->SetXY($this->x_axis,$this->y_axis);
			$this->Row($this->Efields);
			$this->SetXY($this->x_axis,$this->y_axis);
			$this->Row($this->Efields);
			$this->SetTextColor(0,0,0);
			
		}
		
		public function add_contents(){
			
			$items = join(', ',$this->Efields);
			$result = $this->con->query("SELECT $items FROM ".$this->con->database.'.'.$this->Etable);
			
			$temp = array();
			while ($row = mysql_fetch_assoc($result)){
				$i=0;
				foreach($this->Efields as $field){
					$temp[$i] = $row[$field];
					$i++;					
				}
				$this->SetX($this->x_axis);
				$this->Row($temp);
				
				$this->checkY();
			}
			
			$this->Output();
		}
		
		public function checkY(){
			$flag = false;
			if($this->Epage=="p"){
				if($this->GetY() > 240)
					$flag = true;				
			}else{
				if($this->GetY() > 180)
					$flag = true;				
			}
			
			if($flag){
				$this->x_axis = 5;
				$this->y_axis = 30;
				$this->SetXY($this->x_axis,$this->y_axis);
				$this->add_header();
				$this->add_table_header();
			}
		}
		
	}

?>