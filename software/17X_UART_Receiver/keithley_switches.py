class Keithley_Switches:
    def __init__(self, model_number):
        # Unit Switches
        self.unit_lst = ['Ω', 'V', 'A']
        
        if (model_number==179):
            # Range Switches for each Unit
            self.ohm_range_lst  = ["2k", "20k", "200k", "2000k", "20M"]
            self.volt_range_lst = ["200m", "2", "20", "200", "1000"]
            self.amp_range_lst  = ["200u", "2m", "20m", "200m", "2000m"]

            # Unit prefixes for each range
            self.ohm_prefix_lst  = ['k', 'k', 'k', 'k', 'M']
            self.volt_prefix_lst = ['m', ' ', ' ', ' ', ' ']
            self.amp_prefix_lst  = ['u', 'm', 'm', 'm', 'm']

            # Decimal placment from left for each range
            self.ohm_factor_lst  = [2, 3, 4, 5, 3]
            self.volt_factor_lst = [4, 2, 3, 4, 5]
            self.amp_factor_lst  = [4, 2, 3, 4, 5]
        
        elif (model_number==177):
            # Range Switches for each Unit
            self.ohm_range_lst  = ["20", "200", "2k", "20k", "200k", "2000k", "20M"]
            self.volt_range_lst = ["20m", "200m", "2", "20", "200", "1000", '']
            self.amp_range_lst  = ["20u", "200u", "2m", "20m", "200m", "2000m", '']

            # Unit prefixes for each range
            self.ohm_prefix_lst  = [' ', ' ', 'k', 'k', 'k', 'k', 'M']
            self.volt_prefix_lst = ['m', 'm', ' ', ' ', ' ', ' ', ' ']
            self.amp_prefix_lst  = ['u', 'u', 'm', 'm', 'm', 'm', ' ']

            # Decimal placment from left for each range
            self.ohm_factor_lst  = [3, 4, 2, 3, 4, 5, 3]
            self.volt_factor_lst = [3, 4, 2, 3, 4, 5, 6]
            self.amp_factor_lst  = [3, 4, 2, 3, 4, 5, 6]
    
    def update(self, unit_index, range_index):
        try:
            self.unit_str = self.unit_lst[unit_index]
        except IndexError:
            print("Unit index is out of range")

        if (self.unit_str == 'Ω'):
            self.range  = self.ohm_range_lst[range_index]
            self.prefix = self.ohm_prefix_lst[range_index]
            self.factor = self.ohm_factor_lst[range_index]
        elif (self.unit_str == 'V'):
            self.range  = self.volt_range_lst[range_index]
            self.prefix = self.volt_prefix_lst[range_index]
            self.factor = self.volt_factor_lst[range_index]
        elif (self.unit_str == 'A'):
            self.range  = self.amp_range_lst[range_index]
            self.prefix = self.amp_prefix_lst[range_index]
            self.factor = self.amp_factor_lst[range_index]
    
    def get_range_lst(self):
        if (self.unit_str == 'Ω'):
            return self.ohm_range_lst
        elif (self.unit_str == 'V'):
            return self.volt_range_lst
        elif (self.unit_str == 'A'):
            return self.amp_range_lst