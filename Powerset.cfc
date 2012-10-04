/**
*
* @file Powerset.cfc
* @author  Michael Sharman (michael[at]chapter31[dot]com)
* @description Calculates a powerset (set/permutations of all subsets) of an array of string data
* @usage 
*   Powerset = new Powerset();
*   var res = Powerset.calculate([1,2,3,4]);
*   //returns
*   ["","1","2","1,2","3","1,3","2,3","1,2,3","4","1,4","2,4","1,2,4","3,4","1,3,4","2,3,4","1,2,3,4"]
*
*/
component output="false" displayname="Powerset"
{

	public function init()
	{
		return this;
	}


	public array function calculate(required array data)
	{
		var ps = [""];
		var d = arguments.data;
		var lenData = arrayLen(d);
		var lenPS = 0;
		for (var i=1; i LTE lenData; i++)
		{
			lenPS = arrayLen(ps);
			for (var j = 1; j LTE lenPS; j++)
			{
				arrayAppend(ps, listAppend(ps[j], d[i]));
			}
		}
		return ps;
	}

}
