void setup()
{
	noLoop();
	size(500,500);
}
void draw()
{
	background(192);
	Die a = new Die(100,100);
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
		x=q;
		y=w;
		roll=0;
	}
	void roll()
	{
		roll=2;
		//(int)(Math.random()*6)+1;

	}
	void show()
	{
		fill(255);
		rect(q,w,50,50,12);
		fill(0);
		if(roll==1){
			circle(25,25,5);
		}else if (roll==2){
			circle(15,25,5);
			circle(35,25,5);
		}
	}
}
