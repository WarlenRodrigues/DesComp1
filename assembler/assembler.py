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
        print(self.code)

    def get_functions(self):
        for line in range(0, len(self.code)):
            parameters = self.code[line].split(" ")
            for parameter in parameters:
                if ":" in parameter:
                    self.functions[parameter.replace(":", "")] = (bin(int(line))[2:].zfill(4))

        print(self.functions)

    def replace_opcodes_and_registers(self):
        for line in range(0, len(self.code)):
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
                    elif "0x" in parameter:
                        parameters_list.append(bin(int(parameter.replace('0x', "")))[2:].zfill(4))
                    elif "#" in parameter:
                        parameters_list.append(bin(int(parameter.replace('#', "")))[2:].zfill(4))
                    elif parameter in self.functions:
                        parameters_list.append(self.functions[parameter])
            self.binary[line] = parameters_list
        print(self.binary)

registers = {"R0": "000", "R1": "001", "R2": "010",
"R3": "011", "R4": "100", "R5": "101", "R6": "110",
"R7": "111"}

opcodes = {"LOAD": "0001", "ADD": "0010", "ADDI": "0100",
"STORE": "1000", "SUB": "0011", "SUBI": "0101", "JMP": "0110",
"CMP": "1100", "JE": "0111"}


assembler = Assembler(registers, opcodes)

assembler.get_code("code.txt")

assembler.get_functions()

assembler.replace_opcodes_and_registers()
