package
{
    import starling.display.Quad;
    import starling.display.Sprite;
    import starling.utils.Color;
	import starling.events.KeyboardEvent;
	import starling.events.Event;

	import flash.ui.Keyboard;

 
    public class PlayerPaddle extends Sprite
    {

		public var paddle:Quad;
		
        public function PlayerPaddle(paddlex, paddley, paddleCol)
        {
			paddle = new Quad(10, 40, paddleCol);
            paddle.x = paddlex;
            paddle.y = paddley;
			addChild(paddle);
			
        }

    }
}