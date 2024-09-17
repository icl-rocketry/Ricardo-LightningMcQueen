/**
 * @file idle.h
 * @author Kiran de Silva (kd619@ic.ac.uk)
 * @brief Example implementation of a state. Note the initialize and exit methods do not need to be reimplemented if not needed. However enusre the parent functions are called if they are!
 * @version 0.1
 * @date 2023-06-20
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#pragma once

#include <memory>

#include <libriccore/fsm/state.h>
#include <libriccore/systemstatus/systemstatus.h>
#include <libriccore/commands/commandhandler.h>

#include "Config/systemflags_config.h"
#include "Config/types.h"
#include "system.h"

class Live : public Types::CoreTypes::State_t
{
    public:
        Live(System& system);

        void initialize() override; //dont think it's needed this for this state

        Types::CoreTypes::State_ptr_t update() override;

        void exit() override;   //dont think needed either

    private:
        System& _system;
        uint8_t latch_bit;
        uint32_t prevLogMessageTime;    
};