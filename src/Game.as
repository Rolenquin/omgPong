package
{
	
	import flash.ui.Keyboard;
    import starling.display.Quad;
    import starling.display.Sprite;
    import starling.utils.Color;
	import starling.events.Event;
	import starling.events.KeyboardEvent;


	
 
    public class Game extends Sprite
    {	
		public var leftPlayer;
		private var movingDown:Boolean = false;
		private var movingUp:Boolean = false;
		
        public function Game()
        {
		 var leftPlayer = new PlayerPaddle(50, 250, Color.RED);
		 		 addChild(leftPlayer);
				addEventListener(Event.ADDED_TO_STAGE, init);
		 
		 var rightPlayer = new PlayerPaddle(750, 250, Color.BLUE);
				addChild(rightPlayer);	

		 var startBall = new Ball()
				addChild(startBall);
				
        }
		
			private function init(e:Event):void
		{
				removeEventListener(Event.ADDED_TO_STAGE, init);
				stage.addEventListener(KeyboardEvent.KEY_DOWN, onDown);
				stage.addEventListener(KeyboardEvent.KEY_UP, onUp);	
		}
		
		
		private function onDown(e:KeyboardEvent):void
		{
			if (e.keyCode == Keyboard.DOWN)
			{
				trace(e.keyCode)
				movingDown = true;
			}
			
		}
		
		private function onUp(e:KeyboardEvent):void
		{
			if (e.keyCode == 40)
			{
				trace(e.keyCode)
				movingDown = false;
			}

		}
		private function update():void
		{
			if (movingDown)
			{
			leftPlayer.y += 5;
			}
			if (!movingDown)
			{
			trace("I am not moving down");
			}			
			if (movingUp)
			{
			leftPlayer.y -= 5;
			}
		}			
    }
}