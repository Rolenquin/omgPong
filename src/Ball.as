package
{
    import starling.display.Quad;
    import starling.display.Sprite;
    import starling.utils.Color;
	import starling.events.Event
 
    public class Ball extends Sprite
    {
        public function Ball()
        {
			//draw ball and set ball color
			var ball:Quad = new Quad(10, 10, 0xFFFFFF);
            
			//define ball starting location and initialize ball
			ball.x = 398;
            ball.y = 260;
            
			addChild(ball);
			
						
			//Defines ball velocity
			var ballVelX = ballDirection();
			var ballVelY = ballDirection();
			
			
			ball.addEventListener(Event.ENTER_FRAME, BallMotion);	
			function BallMotion(evt:Event):void	
			{
				//Sets ball in motion
				
				ball.x += ballVelX;
				ball.y += ballVelY;
				
			    //Restrains ball within vertical boundaries of the stage
				
				if (ball.y > 600)
				{
					ballVelY = -ballVelY;
				}
				if (ball.y < 0)
				{
					ballVelY = -ballVelY;
				}
				if (ball.x > 800)
				{
					var newDirectionX = ballDirection();
					var newDirectionY = ballDirection();
					ballVelX = newDirectionX;
					ballVelY = newDirectionY;
					
					ball.x = 398;
					ball.y = 260;
				}
				if (ball.x < 0)
				{
					var newDirectionX = ballDirection();
					var newDirectionY = ballDirection();
					ballVelX = newDirectionX;
					ballVelY = newDirectionY;
					ball.x = 398;
					ball.y = 260;
				}				
			}
			
			//Determines a random direction for ball to travel			
			function ballDirection()
			{
				var ballVel;
				var ballDir = Math.random() * 20 - 10;
				if (ballDir >= 0)
				{
					ballVel = 3;
				}
				else
				{
					ballVel = -3;
				}
				
				return ballVel;
			}			
		}
    }		
}		

