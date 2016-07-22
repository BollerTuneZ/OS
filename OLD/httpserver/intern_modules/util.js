
module.exports = 
{
	ShrinkArray:shrinkArray,
	StrF:FormatStr
};

var indexes = [];

function GetLastIndex(name)
{
	for(var i=0,j=indexes.length;i++ )
	{
		var currentIndex = indexes[i];
		if(currentIndex.name == name)
		{
			return currentIndex.val;
		}
	}
	return null;
}

function AddLastIndex(name,val)
{
	var newIndex = 
	{
		"name": name,
		"val":val
	};
	indexes.push(newIndex);
}

function SetLastIndex(name)
{
	for(var i=0,j=indexes.length;i++)
	{
		var currentIndex = indexes[i];
		if(currentIndex.name == name)
		{
			currentIndex.val++;
			return 1;
		}
	}
	return -1;
}

function shrinkArray(array,size)
{
	
	return array.splice(0,size);
}

/*
var stunde = 2;
var minute = 20;
var sekunden = 40;
var uhrzeitMuster = "Stunde:{0} minute {1} sekunde {2}";
var str1 = "Stunde:" + stunde + " minute "+ minute + " sekunde "+ sekunde;

var str2 = FormatStr(uhrzeitMuster,stunde,minute,sekunden);

var str3 = FormatStr("Stunde:{0} minute {1} sekunde {2}: {3}",[stunde,minute,sekunden, "Haha"]);*/

function FormatStr(msg,value1,value2,value3)
{
	if( Object.prototype.toString.call( value1 ) === '[object Array]' ) {
	    return _formatStr(msg,values);
	}
	
	if(value1 != undefined && value2 != undefined && value3 != undefined)
	{
		return _formatStr(msg,[value1,value2,value3]);
	}else
	if(value1 != undefined && value2 != undefined)
	{
		return _formatStr(msg,[value1,value2]);
	}
	return _formatStr(msg,[value1]);
}		


function _formatStr(msg,valArry)
{
	for(var i=0,j=valArry.length;i<j;i++)
	{
		msg = msg.replace("{"+i+"}",valArry[i]);
	}
	return msg;
}
