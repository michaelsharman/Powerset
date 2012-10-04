Calculates a powerset (set/permutations of all subsets) of an array of string data

##Usage:
```
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
```

A sample powerset of 4 values (in this case 1,2,3,4) would be:

```
var res = powerset([1,2,3,4]);
```

Outputs:
```
["","1","2","1,2","3","1,3","2,3","1,2,3","4","1,4","2,4","1,2,4","3,4","1,3,4","2,3,4","1,2,3,4"]
```
