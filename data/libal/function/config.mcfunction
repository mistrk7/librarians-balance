#template
data modify storage libal:macro dialog set value  \
{\
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "[ Librarian's Balance ]",\
    "color": "green"\
  },\
  "body": [\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:enchanted_book",\
        "components": {\
          "minecraft:custom_name": "minecraft:mending"\
        }\
      },\
      "show_tooltip": 1,\
      "width": 16,\
      "height": 16\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": "IDs start with their namespace followed by the enchantment name. Vanilla starts with minecraft: , but a modpack may start with something else (ex. veinminer-enchantment:veinminer)",\
        "extra": [\
          {\
            "text": "\nLink to Minecraft's List of Enchantments",\
            "color": "#00ffff",\
            "underlined": 0,\
            "click_event": {\
              "action": "open_url",\
              "url": "https://minecraft.wiki/w/Enchantment#List_of_enchantments"\
            },\
            "hover_event": {\
              "action": "show_text",\
              "value": "link"\
            }\
          }\
        ]\
      }\
    }\
  ],\
  "inputs": [\
    {\
      "type": "minecraft:number_range",\
      "key": "book_level_cap",\
      "label": {\
        "text": "Random Book Level Cap",\
        "hover_event": {\
          "action": "show_text",\
          "value": "The level limit for random book trades. By design, the lectern bypasses this."\
        }\
      },\
      "start": 1,\
      "end": 5,\
      "step": 1,\
      "initial": 3\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "no_mending",\
      "label": {\
        "text": "No Mending",\
        "hover_event": {\
          "action": "show_text",\
          "value": "Removes Mending (delisted enchantments) from appearing in trades."\
        }\
      },\
      "on_true": "1",\
      "on_false": "-1"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "sealed_books",\
      "label": {\
        "text": "Sealed Books",\
        "color": "aqua",\
        "hover_event": {\
          "action": "show_text",\
          "value": "Locks the copies of books that are uniquely obtained (ex. soul speed) from being traded further by using the 'sealed' tag."\
        }\
      },\
      "on_true": "1",\
      "on_false": "-1"\
    },\
    {\
      "type": "minecraft:text",\
      "key": "delisted_books",\
      "label": {\
        "text": "Delisted Enchants (like mending)"\
      },\
      "max_length": 2048,\
      "initial": "minecraft:x",\
      "multiline": {\
        "max_lines": 6\
      }\
    },\
    {\
      "type": "minecraft:text",\
      "key": "sealed_list",\
      "label": {\
        "text": "Sealed Books (like treasure enchants)",\
        "click_event": {\
          "action": "open_url",\
          "url": "https://minecraft.wiki/w/Enchantment#Treasure"\
        }\
      },\
      "max_length": 2048,\
      "initial": "minecraft:x",\
      "multiline": {\
        "max_lines": 12\
      }\
    },\
    {\
      "type": "minecraft:text",\
      "key": "book_blacklist",\
      "label": {\
        "text": "Blacklisted Enchants (villagers refuse)"\
      },\
      "max_length": 2048,\
      "initial": "minecraft:x",\
      "multiline": {\
        "max_lines": 6\
      }\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "verbose_mode",\
      "label": {\
        "text": "Verbose Mode",\
        "hover_event": {\
          "action": "show_text",\
          "value": "Gives a tip in chat to players who try to RNG a Mending book (if no mending is enabled they're just wasting time)"\
        }\
      },\
      "on_true": "1",\
      "on_false": "-1"\
    }\
  ],\
  "columns": 2,\
  "actions": [\
    {\
      "label": "Reset",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "function libal:settings"\
      }\
    },\
    {\
      "label": "Save",\
      "action": {\
        "type": "minecraft:dynamic/run_command",\
        "template": 'function libal:config/save {no_mending:$(no_mending),sealed_books:$(sealed_books),book_level_cap:$(book_level_cap),verbose_mode:$(verbose_mode),delisted_books:"$(delisted_books)",book_blacklist:"$(book_blacklist)",sealed_list:"$(sealed_list)"}'\
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

#concat blacklist and delisted and sealed list in a multiline str
function libal:config/concat_blacklist with storage libal:books blacklist
function libal:config/concat_delisted with storage libal:books delisted
function libal:config/concat_sealed with storage libal:books sealed

#show dialog
function libal:config/show_dialog with storage libal:macro


