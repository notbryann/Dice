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
		total = total + a.roll;
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
		fill(0);
		if(roll==1){
			circle(q+25,w+25,5);
		}else if (roll==2){
			circle(q+15,w+25,5);
			circle(q+35,w+25,5);
		}else if(roll==3){
			circle(q+25,w+25,5);
			circle(q+15,w+15,5);
			circle(q+35,w+35,5);
		}else if(roll==4){
			circle(q+15,w+15,5);
			circle(q+15,w+35,5);
			circle(q+35,w+15,5);
			circle(q+35,w+35,5);
		}else if(roll==5){
			circle(q+15,w+15,5);
			circle(q+15,w+35,5);
			circle(q+35,w+15,5);
			circle(q+35,w+35,5);
			circle(q+25,w+25,5);
		}else if(roll==6){
			circle(q+15,w+15,5);
			circle(q+15,w+35,5);
			circle(q+35,w+15,5);
			circle(q+35,w+35,5);
			circle(q+15,w+25,5);
			circle(q+35,w+25,5);
		}
	}
}
