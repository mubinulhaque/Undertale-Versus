///get_input()

//Player 1 Controls
downKey = keyboard_check(ord("S"))
upKey = keyboard_check(ord("W"))
rightKey = keyboard_check(ord("D"))
leftKey = keyboard_check(ord("A"))
enterKey = keyboard_check_direct(vk_lshift)
cancelKey = keyboard_check_direct(vk_lcontrol)

//Player 2 Controls
downKey2 = keyboard_check(vk_down)
upKey2 = keyboard_check(vk_up)
rightKey2 = keyboard_check(vk_right)
leftKey2 = keyboard_check(vk_left)
enterKey2 = keyboard_check_direct(vk_rshift)
cancelKey2 = keyboard_check_direct(vk_rcontrol)

//Escape Button
if(keyboard_check(vk_escape)) {
    game_end()
}
