/**
*
* @file Set.cfc
* @author  Michael Sharman
* @description Calculates a powerset (set/permutations of all subsets) of an array of string data
*
*/
component output="false" displayname="Powerset"
{

	public function init()
	{
		return this;
	}


	public array function powerset(required array data)
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