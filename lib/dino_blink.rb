require 'dino'

# board = Dino::Board.new(Dino::TxRx.new)
# led1 = Dino::Components::Led.new(pin: 13, board: board)
# led2 = Dino::Components::Led.new(pin: 14, board: board)
# led3 = Dino::Components::Led.new(pin: 15, board: board)

def blink led, active
		if active == 1
			led.send(:on)
		else
			led.send(:off)
		end
end
def warn led, c
	c.times do
		led.send(:on)
		sleep 0.1
		led.send(:off)
		sleep 0.1
	end
end


# puts "Chon den led sang: ";
# leds = gets
# puts "Chon che do sang: ";
# turn = gets
# if leds.to_i == 1
# 	puts "Ctr + z : turn off";
# 	blink(led1,turn.to_i);
# elsif leds.to_i == 2
# 	puts "Ctr + z : turn off";
# 	blink(led2,turn.to_i);
# else
# 	puts "Ctr + z : turn off";
# 	blink(led3,turn.to_i);
# end
