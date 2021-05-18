#ifndef WKREPROG_IMPL_H
#define WKREPROG_IMPL_H

#include "types.h"

extern uint16_t wkreprog_impl_get_page_size();
extern bool wkreprog_impl_open_app_archive(uint16_t start_write_position);
extern bool wkreprog_impl_open_raw(uint_farptr_t start_write_position, uint_farptr_t end_of_safe_region);
extern void wkreprog_impl_write(uint16_t size, uint8_t* data, bool skip);
extern void wkreprog_impl_close();
extern void wkreprog_impl_reboot();

extern const unsigned char rtc_start_of_compiled_code_marker;
#define RTC_START_OF_COMPILED_CODE_SPACE (GET_FAR_ADDRESS(rtc_start_of_compiled_code_marker))
#define RTC_END_OF_COMPILED_CODE_SPACE ((uint32_t)122880)
extern uint16_t rtc_start_of_next_method;
#define RTC_SET_START_OF_NEXT_METHOD(addr) do { rtc_start_of_next_method = (uint16_t)(addr/2); } while(0)
#define RTC_GET_START_OF_NEXT_METHOD()     ( ((uint32_t)rtc_start_of_next_method)*2 )

extern uint_farptr_t wkreprog_impl_get_raw_position();

#define GET_FAR_ADDRESS(var)                          \
({                                                    \
	uint_farptr_t tmp;                                \
                                                      \
	__asm__ __volatile__(                             \
                                                      \
			"ldi	%A0, lo8(%1)"           "\n\t"    \
			"ldi	%B0, hi8(%1)"           "\n\t"    \
			"ldi	%C0, hh8(%1)"           "\n\t"    \
			"clr	%D0"                    "\n\t"    \
		:                                             \
			"=d" (tmp)                                \
		:                                             \
			"p"  (&(var))                             \
	);                                                \
	tmp;                                              \
})



#endif // WKREPROG_IMPL_H
