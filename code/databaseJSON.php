<?php
class ArrayValue implements JsonSerializable {
    public function __construct(array $array) {
        $this->array = $array;
    }

    public function jsonSerialize() {
        return $this->array;
    }
}

class DaBase
{
	private $mysqli;
	private $res;
	
	function DaBase()
	{
		
		mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
		try {
			$this->connect();
		}
		catch (mysqli_sql_exception $e)
		{
			throw($e);
		}
	}
	
	function connect()
	{
		// Connect to the database 
		//   Check for success
		try {
			$this->mysqli = new mysqli("localhost", "root", "", "WhoKilledMrSims");
		}
		catch (mysqli_sql_exception $e) { 
			throw $e; 
		}
		/*
		if ($this->mysqli->connect_errno) {
			exit("Failed to connect to MySQL: (" . $this->mysqli->connect_errno . ") " . $this->mysqli->connect_error);
		}
		*/
	}

	function query($pSQL)
	{
		// Run Query
		try {
			$this->res = $this->mysqli->query($pSQL);
		}
		catch (mysqli_sql_exception $e) { 
			throw $e; 
		}	
		/*
		if( !($this->res = $this->mysqli->query($pSQL))){
		//    Check for success
		  exit("Query to MySQL: $SQL error : ". $this->mysqli->error);
		}
		*/
	}

	// Utility - debugging?
	function display($pName)
	{
      $allRows = Array();
	  $rowCount = 0;
		// produce results
		
		while ($row = $this->res->fetch_assoc()) {
			$allRows[$rowCount] = $row;
			$rowCount++;
		}
		echo json_encode(new ArrayValue($allRows),JSON_PRETTY_PRINT);
	}

// HTML

// JSON


	function closeDb()
	{
	 // close database 
	  $this->mysqli->close();
	}
	
} // End of daBase

try
{
	$aDB = new DaBase();
	
	$SQL = "SELECT Name FROM Suspect";
	// $SQL = "SELECT Name FROM Suspect WHERE Guilty = 0";
			
	$aDB->query($SQL);
	$aDB->display("Suspects");
	$aDB->closeDb();
}
catch ( Exception $e)
{
   echo $e->getMessage(); 
}		
?>