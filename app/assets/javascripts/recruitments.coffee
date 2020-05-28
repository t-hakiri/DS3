# 検索条件全部リセットボタン
$ ->
  clearForm = (form) ->
    $(form).find('input, select, textarea').not(':button, :submit, :reset, :hidden').val('').prop('checked', false).prop 'selected', false
    $(form).find(':radio').filter('[data-default]').prop 'checked', true
    return

  $('.clear-button').on 'click', ->
    clearForm @form
    return
  return

# レベル以上リセットボタン
$ ->
  clearFormOwnerLevel = (form) ->
    $(form).find('#q_owner_level_gt').val('').prop('checked', false).prop 'selected', false
    return
  $('.clear-owner-level').on 'click', ->
    clearFormOwnerLevel @form
    return
  return

# レベル未満リセットボタン
$ ->
  clearFormOwnerLevel = (form) ->
    $(form).find('#q_owner_level_lt').val('').prop('checked', false).prop 'selected', false
    return
  $('.clear-owner-level-lt').on 'click', ->
    clearFormOwnerLevel @form
    return
  return

# 攻略エリアリセットボタン
$ ->
  clearFormOwnerLevel = (form) ->
    $(form).find('#q_area_eq').val('').prop('checked', false).prop 'selected', false
    return
  $('.clear-area').on 'click', ->
    clearFormOwnerLevel @form
    return
  return

# 遊ぶ機種リセットボタン
$ ->
  clearFormOwnerLevel = (form) ->
    $(form).find('#q_game_model_eq').val('').prop('checked', false).prop 'selected', false
    return
  $('.clear-game-model').on 'click', ->
    clearFormOwnerLevel @form
    return
  return

$ ->
  clearFormOwnerLevel = (form) ->
    $(form).find('#q_lap_count_eq').val('').prop('checked', false).prop 'selected', false
    return
  $('.clear-lap-count').on 'click', ->
    clearFormOwnerLevel @form
    return
  return
