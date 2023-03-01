///battle_act2()

//Selecting Action
if(ObjBattleAlarm.alarm[3] <= 0) {
    if(INPUT.downKey2) {
        if(dialog_index2 < array_length_1d(enemyBoss.action) - 1) {
            dialog_index2++
        } else {
            dialog_index2 = 0
        }
        ObjBattleAlarm.alarm[3] = room_speed / 4
    }
    if(INPUT.upKey2) {
        if(dialog_index2 > 0) {
            dialog_index2--
        } else {
            dialog_index2 = array_length_1d(enemyBoss.action) - 1
        }
        ObjBattleAlarm.alarm[3] = room_speed / 4
    }
}

//Drawing Text
for(var i = 0; i <= array_length_1d(enemyBoss.action) - 1; i++) {
    draw_set_color(c_white)
    if(i != dialog_index2) {
        draw_text(336, 272 + (i * 24), "* " + enemyBoss.action[i])
    } else {
        draw_set_color(c_yellow)
        draw_sprite(SprSoul, 1, 334, 277 + (i * 24))
        draw_text(336 + string_width("* "), 272 + (i * 24), enemyBoss.action[i])
    }
    draw_set_color(c_white)
}

//Cancel Key
if(INPUT.cancelKey2) {
    dialog_index2 = 0
    action2 = battle_set_action2
    ObjBattleAlarm.chars_drawn2 = 1
    ObjBattleAlarm.alarm[1] = 1
}
