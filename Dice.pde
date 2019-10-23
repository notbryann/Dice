int total = 0;
void setup()
{
	noLoop();
	size(500,500);
}
void draw()
{
	background(0);
	for(int j=0; j<440; j+=50){
		for(int i=0; i <500; i += 50){
		Die a = new Die(i,j);
		a.roll();
		a.show();
		total = total + a.iroll;
		}
	}
	fill(255);
	textSize(20);
	text("Total Dots: " + total,175,480);
	

}
void mousePressed()
{ 
	redraw();
	total = 0;
}
class Die //models one single dice cube
{
	int q,w,iroll;
	
	Die(int x, int y) //constructor
	{
		q=x;
		w=y;
		iroll=0;
	}
	void roll()
	{
		iroll=(int)(Math.random()*6)+1;

	}
	void show()
	{
		fill(255);
		rect(q,w,50,50,12);
		fill(1);
		if(iroll==1){
			ellipse(q+25,w+25,5,5);
		}else if (iroll==2){
			ellipse(q+15,w+25,5,5);
			ellipse(q+35,w+25,5,5);
		}else if(iroll==3){
			ellipse(q+25,w+25,5,5);
			ellipse(q+15,w+15,5,5);
			ellipse(q+35,w+35,5,5);
		}else if(iroll==4){
			ellipse(q+15,w+15,5,5);
			ellipse(q+15,w+35,5,5);
			ellipse(q+35,w+15,5,5);
			ellipse(q+35,w+35,5,5);
		}else if(iroll==5){
			ellipse(q+15,w+15,5,5);
			ellipse(q+15,w+35,5,5);
			ellipse(q+35,w+15,5,5);
			ellipse(q+35,w+35,5,5);
			ellipse(q+25,w+25,5,5);
		}else if(iroll==6){
			ellipse(q+15,w+15,5,5);
			ellipse(q+15,w+35,5,5);
			ellipse(q+35,w+15,5,5);
			ellipse(q+35,w+35,5,5);
			ellipse(q+15,w+25,5,5);
			ellipse(q+35,w+25,5,5);
		}
	}
}
