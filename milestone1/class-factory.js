/* 
CLASS FACTORY
============================================
Put this in it's own file.
Include the script in your HTML to define Classes.
See testing examples below.
=============================================
*/

				
// The Class Factory
function Class(  pSuper,pProps)
{
  function Class(){}
  

  if(pSuper)
  {
	 Class.prototype = new pSuper();
	 Class.prototype.super = new pSuper();
  }
  else
  {
	 Class.prototype = new Object();
	 Class.prototype.super = new Object();  
  }
  
  for(name in pProps)
  {
   Class.prototype[name] = pProps[name];   
  }
  Class.prototype['window'] = window;
  Class.prototype['document'] = document;
  
  
  return Class;
  
}
//  END OF CLASS FACTORY ===============================
//======================================================