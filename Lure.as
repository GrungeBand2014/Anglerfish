package grungeband2014.anglerfish.entities {
import net.flashpunk.Entity;
import net.flashpunk.FP;
import net.flashpunk.graphics.Image;
import net.flashpunk.utils.Input;
import net.flashpunk.utils.Key;

	public class Lure extends Entity {
		[Embed(source = "../../../../assets/lure.png")] private const LURE:Class;
		
		public var lureX: Number;
		public var lureY: Number;
		
		public function Lure() {
			graphic = new Image(LURE);
			setHitbox(5, 5);
			type = "lure";
			x = Input.mouseX;
			y = Input.mouseY;
		}
		
		override public function update(): void {
			lureX = Input.mouseX;
			lureY = Input.mouseY;
			
			x = lureX;
			y = lureY;
		}
		
		override public function removed(): void {
		}
	}
}
