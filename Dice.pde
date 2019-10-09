void setup()
{
	noLoop();
	size(500,500);
}
void draw()
{
	background(192);
	Die a = new Die(0,0);
	a.roll();
	a.show();

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int q,w,roll;
	
	Die(int x, int y) //constructor
	{
		q=x;
		w=y;
		roll=0;
	}
	void roll()
	{
		roll=(int)(Math.random()*6)+1;

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
