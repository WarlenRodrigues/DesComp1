class Assembler:

    def __init__(self, registers, opcodes):
        self.registers = registers
        self.opcodes = opcodes
        self.functions = {}
        self.binary = {}

    def get_code(self, name):
        with open(name) as f:
            content = f.readlines()
        content = [x.strip() for x in content]
        self.code = content

    # ELE GUARDA LINHA DA FUNÇÃO-1
    def get_functions(self):
        for line in range(0, len(self.code)):
            parameters = self.code[line].split(" ")
            for parameter in parameters:
                if ":" in parameter:
                    self.functions[parameter.replace(":", "")] = (
                        bin(int(line))[2:].zfill(9))

    def replace_opcodes_and_registers(self):
        for line in range(0, len(self.code)):
            command_comment = '"; -- ' + self.code[line]
            parameters = self.code[line].split(" ")
            parameters_list = []
            for parameter in parameters:
                if ":" in parameter:
                    self.functions[line] = parameter.replace(":", "")
                else:
                    parameter = parameter.replace(',', '')
                    if parameter in self.opcodes:
                        parameters_list.append(self.opcodes[parameter])
                    elif parameter in self.registers:
                        parameters_list.append(self.registers[parameter])
                    elif "%" in parameter:
                        parameters_list.append(
                            bin(int(parameter.replace('%', "")))[2:].zfill(9))
                    elif "#" in parameter:
                        parameters_list.append(
                            bin(int(parameter.replace('#', "")))[2:].zfill(9))
                    elif parameter in self.functions:
                        parameters_list.append(self.functions[parameter])
            parameters_list.append(command_comment)
            if len(parameters_list) == 3:
                opcode = parameters_list[0]
                imediato = parameters_list[1]
                comment = parameters_list[2]
                parameters_list = [opcode, '000', imediato, comment]
            self.binary[line] = parameters_list
            if len(parameters_list) < 3:
                parameters_list = []

    def generate_bin_code(self):
        for item in self.binary:
            full_line = 'tmp({0}) := "'.format(item)
            for piece in self.binary[item]:
                full_line += piece
            print(full_line)

#====================== DISASEMBLYING ============================#


# SETTING REGISTERS DICT
registers = {"R0": "000",
             "R1": "001",
             "R2": "010",
             "R3": "011",
             "R4": "100",
             "R5": "101",
             "R6": "110",
             "R7": "111"}

# SETTING INSTRUCTIONS DICT
opcodes = {
    "NOP": "0000",
    "LOAD": "0001",
    "ADD": "0010",
    "ADDI": "0100",
    "STORE": "1000",
    "SUB": "0011",
    "SUBI": "0101",
    "JMP": "0110",
    "CMP": "1001",
    "JE": "0111"}


# INSTANTIATING ASSEMBLER
assembler = Assembler(registers, opcodes)
assembler.get_code("code2.txt")
assembler.get_functions()
assembler.replace_opcodes_and_registers()
assembler.generate_bin_code()
