from behave import *
from src.Game import *


# Condiciones antes de empezar cualquier STEP
def before_scenario(context, scenario):
    context = {}



@given('the user enters a study: {study}')
def step_impl(context, study):
	context.study = study


@when("the user find games by {study}")
def step_impl(context, study):
	if(study == 'study'):
		result, message = get_game_name(context.games, context.name)
		print(result)
		context.result = result
		context.message = message
