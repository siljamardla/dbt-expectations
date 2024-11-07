
{% macro truth_expression_modified(expression_left_hand_side, expression_right_hand_side) %}
    {{ adapter.dispatch('truth_expression_modified', 'dbt_expectations') (expression_left_hand_side, expression_right_hand_side) }}
{% endmacro %}

{% macro default__truth_expression_modified(expression_left_hand_side, expression_right_hand_side) %}
  {{ expression_left_hand_side }} = {{ expression_right_hand_side }} as expression,
  {{ expression_left_hand_side }} as expression_left_hand_side,
  {{ expression_right_hand_side }} as expression_right_hand_side
{% endmacro %}
