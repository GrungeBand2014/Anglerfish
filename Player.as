package grungeband2014.anglerfish.entities {
import net.flashpunk.Entity;
import net.flashpunk.FP;
import net.flashpunk.graphics.Image;
import net.flashpunk.utils.Input;
import net.flashpunk.utils.Key;

	public class Player extends Entity {
		[Embed(source = "../../../../assets/player.png")] private const PLAYER:Class;
		
		public var attract: Boolean = true;
		public var repel: Boolean = false;
		public var move: Boolean = false;
		public var lure: Lure = new Lure();
		
		public function Player() {
			graphic = new Image(PLAYER);
			setHitbox(18, 18);
			type = "player";
			x = 160;
			y = 120;
		}
		
		override public function update(): void {
			if(attract && Input.pressed(Key.DIGIT_2)) {
				trace("Repelling.");
				
				attract = false;
				repel = true;
			}
			
			if(repel && Input.pressed(Key.DIGIT_1)) {
				trace("Attracting.");
				
				attract = true;
				repel = false;
			}
			
			if(Input.mouseDown) {
				move = true;
			} else {
				move = false;
			}
			
			if(attract && move) {
				moveTowards(lure.lureX, lure.lureY, 1);
			}
			
			if(repel && move) {
				moveTowards(lure.lureX, lure.lureY, -1);
			}
		}
		
		override public function removed(): void {
		}
	}
}
