///battle_act()

//Selecting Action
if(ObjBattleAlarm.alarm[2] <= 0) {
    if(INPUT.downKey) {
        if(dialog_index < array_length_1d(enemyBoss.action) - 1) {
            dialog_index++
        } else {
            dialog_index = 0
        }
        ObjBattleAlarm.alarm[2] = room_speed / 4
    }
    if(INPUT.upKey) {
        if(dialog_index > 0) {
            dialog_index--
        } else {
            dialog_index = array_length_1d(enemyBoss.action) - 1
        }
        ObjBattleAlarm.alarm[2] = room_speed / 4
    }
}

//Drawing Text
for(var i = 0; i <= array_length_1d(enemyBoss.action) - 1; i++) {
    draw_set_color(c_white)
    if(i != dialog_index) {
        draw_text(48, 272 + (i * 24), "* " + enemyBoss.action[i])
    } else {
        draw_set_color(c_yellow)
        draw_sprite(SprSoul, 0, 46, 277 + (i * 24))
        draw_text(48 + string_width("* "), 272 + (i * 24), enemyBoss.action[i])
    }
    draw_set_color(c_white)
}

//Cancel Key
if(INPUT.cancelKey) {
    dialog_index = 0
    action = battle_set_action
    ObjBattleAlarm.chars_drawn = 1
    ObjBattleAlarm.alarm[0] = 1
}
