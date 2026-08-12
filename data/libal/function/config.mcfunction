#template
data modify storage libal:macro dialog set value \
{\
  "type": "minecraft:multi_action",\
  "title": "Librarian's Balance (Config)",\
  "inputs": [\
    {\
      "type": "minecraft:boolean",\
      "key": "no_mending",\
      "label": {\
        "text": "No Mending"\
      },\
      "initial": false,\
      "on_true": "1",\
      "on_false": "-1"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "sealed_books",\
      "label": {\
        "text": "Sealed Book"\
      },\
      "initial": false,\
      "on_true": "1",\
      "on_false": "-1"\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "book_level_cap",\
      "label": {\
        "text": "Book Level Cap"\
      },\
      "start": 1,\
      "end": 5,\
      "step": 1,\
      "initial": 3\
    },\
    {\
      "type": "minecraft:text",\
      "key": "book_blacklist",\
      "label": {\
        "text": "Blacklisted Enchants id"\
      },\
      "max_length": 2048,\
      "initial": "minecraft:x",\
      "multiline": {\
        "max_lines": 4\
      }\
    },\
    {\
      "type": "minecraft:text",\
      "key": "delisted_books",\
      "label": {\
        "text": "Delisted Enchants id"\
      },\
      "max_length": 2048,\
      "initial": "minecraft:x",\
      "multiline": {\
        "max_lines": 4\
      }\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "verbose_mode",\
      "label": {\
        "text": "Verbose Mode"\
      },\
      "initial": false,\
      "on_true": "1",\
      "on_false": "-1"\
    }\
  ],\
  "columns": 2,\
  "actions": [\
    {\
      "label": "Save",\
      "action": {\
        "type": "minecraft:dynamic/run_command",\
        "template": 'function libal:config/save {no_mending:$(no_mending),sealed_books:$(sealed_books),book_level_cap:$(book_level_cap),verbose_mode:$(verbose_mode),delisted_books:"$(delisted_books)",book_blacklist:"$(book_blacklist)"}'\
      }\
    }\
  ]\
}

#change init to current values

execute if score no_mending libal.main matches 1 run data modify storage libal:macro dialog.inputs[{key:"no_mending"}].initial set value true
execute if score no_mending libal.main matches -1 run data modify storage libal:macro dialog.inputs[{key:"no_mending"}].initial set value false

execute if score sealed_books libal.main matches 1 run data modify storage libal:macro dialog.inputs[{key:"sealed_books"}].initial set value true
execute if score sealed_books libal.main matches -1 run data modify storage libal:macro dialog.inputs[{key:"sealed_books"}].initial set value false

data modify storage libal:macro dialog.inputs[{key:"book_level_cap"}].initial set from storage libal:books level

execute if score verbose_mode libal.main matches 1 run data modify storage libal:macro dialog.inputs[{key:"verbose_mode"}].initial set value true
execute if score verbose_mode libal.main matches -1 run data modify storage libal:macro dialog.inputs[{key:"verbose_mode"}].initial set value false

#concat blacklist and delisted in a multiline str
function libal:config/concat_blacklist with storage libal:books blacklist
function libal:config/concat_delisted with storage libal:books delisted

#show dialog
function libal:config/show_dialog with storage libal:macro


