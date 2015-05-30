

// useful things
var id = function (pId)
{
	return document.getElementById(pId);
}
				
// Class definitions
SuspectListView = Class( Object,
{
	ctx : (id("SuspectListCanvas")).getContext('2d'),
	title : '',
	items : [],
	setUp : function (pTitle,pItems)
	{
		this.title = pTitle;
		this.items = pItems;
	},					   
	draw : function ()
	{
		var top = 60;
		var heightStep = 20;
		var count = 0;
						
		this.ctx.font = "20px Georgia";
		this.ctx.fillText(this.title,30, 30);
		this.ctx.font = "15px Georgia";
						
		for ( role in this.items )
		{
			this.ctx.fillText(role + ' - '+this.items[role], 10,top + (heightStep*count));
					count++;
		}// for					
	}// draw				   
}// Class
);
					
WeaponListView = Class( Object,
	{
		ctx : (id("WeaponListCanvas")).getContext('2d'),
		title : '',
		items : [],
		setUp : function (pTitle,pItems)
		{
			this.title = pTitle;
			this.items = pItems;
		},					   
		draw : function ()
		{
			var top = 60;
			var heightStep = 20;
			var count = 0;
						
			this.ctx.font = "20px Georgia";
			this.ctx.fillText(this.title,30, 30);
			this.ctx.font = "15px Georgia";
						
			for ( role in this.items )
			{
				this.ctx.fillText(role + ' - '+this.items[role], 10,top + (heightStep*count));
						  count++;
			}// for			
		}// draw
	}// Class
);
					
LocationListView = Class( Object,
	{
		ctx : (id("LocationListCanvas")).getContext('2d'),
		title : '',
		items : [],
		setUp : function (pTitle,pItems)
		{
			this.title = pTitle;
			this.items = pItems;
		},					   
		draw : function ()
		{
			var top = 60;
			var heightStep = 20;
			var count = 0;
						
			this.ctx.font = "20px Georgia";
			this.ctx.fillText(this.title,30, 30);
			this.ctx.font = "15px Georgia";
						
			for ( role in this.items )
			{
				this.ctx.fillText(role + ' - '+this.items[role], 10,top + (heightStep*count));
						 count++;
			}// for	
		}// draw			   
	}// Class
);
					
				   
// Instances of classes
			  
var aSusList = new SuspectListView();
aSusList.setUp('Suspect List',
	{ 
		Wife : 'Emily Sims', Mistress : 'Celia Maldanado' , Cleaner: 'Hope Gilbert', 
		Gardener :'Rodger Lee', Neighbour :'Jackie Wolfe'
	}
);
			  
var aWeapList = new WeaponListView();
aWeapList.setUp('Weapon List',
	{
		One : 'Knife', Two : 'Gun' , Three: 'Scarf', Four :'Cleaver', Five :'Poison'
	}
);
			  
var aLocList = new LocationListView();
aLocList.setUp('Location List',
	{ 
		One : 'Bedroom', Two : 'Bathroom' , Three: 'Lounge', Four :'Kitchen', Five :'Patio'
	}
);
			  
aSusList.draw();
aWeapList.draw();
aLocList.draw();


// function image() 
// {
	// var c = document.getElementById("MapPositionCanvas");
	// var ctx = c.getContext("2d");
	// ctx.font = "30px Georgia";
	// ctx.fillText("Map Image Will Go Here",60,100);
// };

// image();

// -----------------------------------------------------------------------------------
// THIS STUFF IS FOR MY IMAGE BUT I CAN'T GET IT TO WORK

// aPlayerView.draw();

PlayerView = Class( Object,
	{
	ctx: (id("MapPositionCanvas")).getContext('2d'),
	
	// var mapImg = new Image(),
	
	setUp : function (pSrc)
		{
		this.src = pSrc;
		},	

	},
	
	this.src = new Image(),
	
	draw : function () {
		mapImg.onload = function () 
		{
			ctx.drawImage(mapImg, 596, 456);
		};
	};
};

var aPlayerView = new PlayerView();
aPlayerView.setUp(
	{
		C:\Users\rebekah-rossiter\Documents\SDV602\Who-Killed-Mr-Sims-Milestone-2\map.psd
	}
);

aPlayerView.draw();


// function PlayerView() {
	// var canvas = document.getElementById('MapPositionCanvas');
   // var ctx = canvas.getContext('2d');
      // var imageObj = new Image();

      // imageObj.onload = function() {
        // ctx.drawImage(imageObj, 69, 50);
      // };
      // imageObj.src = 'C:\Users\rebekah-rossiter\Documents\SDV602\Who-Killed-Mr-Sims';
// };

// PlayerView.drawImage();
