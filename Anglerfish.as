package grungeband2014.anglerfish {
import net.flashpunk.Engine;
import net.flashpunk.FP;

[SWF(width = "640", height = "480", frameRate = "60")]

	public class Anglerfish extends Engine {
		public function Anglerfish() {
			super(320, 240, 60, true);
			FP.screen.scale = 2;
			FP.screen.color = 0xff4528be;
			FP.world = new Ocean();
		}
		
		override public function init(): void {
			trace("Working.");
		}
	}
}
