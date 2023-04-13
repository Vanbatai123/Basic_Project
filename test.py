FILE_NAME = "bo.alg"
count_A = 0
count_J = 0
_status = ""

STT_BOARD_INFOR = "BOARD_NAME"
STT_STACKUP = "LAYER_SORT"
STT_NET_1 = "NET_1"
STT_NET_2 = "NET_2"
STT_PAD = "PAD_NAME"
STT_DRAWING = "CLASS"
STT_SYM_NAME = "SYM_NAME"
STT_PLACEMENT = "SYM_TYPE"

# temp = "A!BOARD_NAME!!!BOARD_UNITS!BOARD_EXTENTS_X1!BOARD_EXTENTS_Y1!BOARD_EXTENTS_X2!BOARD_EXTENTS_Y2!BOARD_THICKNESS!"
# x= temp.split("!")
# print(x)


class AllegroBoard:

    def __init__(self):
        self.InforObj = self.Infor()
        self.l_layer = []
        self.l_net = []

    class Infor:
        def __init__(self, name="", unit="", extentX1="", extentY1="", extentX2="", extentY2="", thickness=""):
            self.name = name
            self.unit = unit
            self.extentX1 = extentX1
            self.extentY1 = extentY1
            self.extentX2 = extentX2
            self.extentY2 = extentY2
            self.thickness = thickness

        def updateInfor(self, name="", unit="", extentX1="", extentY1="", extentX2="", extentY2="", thickness=""):
            self.name = name
            self.unit = unit
            self.extentX1 = extentX1
            self.extentY1 = extentY1
            self.extentX2 = extentX2
            self.extentY2 = extentY2
            self.thickness = thickness

        def printInfor(self):
            print("\n*******************")
            # print("{:>6}!".format(123), "line", end="")
            print("{:<15}".format("Board Name:"), self.name)
            print("{:<15}".format("Unit:"), self.unit)
            print("{:<15}".format("Extent X1:"), self.extentX1)
            print("{:<15}".format("Extent Y1:"), self.extentY1)
            print("{:<15}".format("Extent X2:"), self.extentX2)
            print("{:<15}".format("Extent Y2:"), self.extentY2)
            print("{:<15}".format("Thickness:"), self.thickness)

    class Layer:
        def __init__(self, number="", subclass="", artwork="", use="", conductor="", dielectric="", E_conduct="", material="", thermal="", thickness=""):
            self.number = number  # 0,1,2,3,4...
            self.subclass = subclass  # TOP,GND1,...
            self.artwork = artwork  # POSITIVE/NEGATIVE
            self.use = use  # EMBEDDED_PLANE
            self.conductor = conductor  # YES/NO
            self.dielectric = dielectric  # float value
            self.E_conduct = E_conduct  # 0 mho/cm
            self.material = material  # AIR,COPPER,FR-4
            self.thermal = thermal
            self.thickness = thickness  # float value

        def printInfor(self):
            print("\n*******************")
            print("{:<15}".format("Number:"), self.number)
            print("{:<15}".format("Subclass:"), self.subclass)
            print("{:<15}".format("Artwork:"), self.artwork)
            print("{:<15}".format("Use:"), 	self.use)
            print("{:<15}".format("Conductor:"), self.conductor)
            print("{:<15}".format("Dielectric:"), self.dielectric)
            print("{:<15}".format("Electric conduct:"), self.E_conduct)
            print("{:<15}".format("Material:"), self.material)
            print("{:<15}".format("Thermal:"), self.thermal)
            print("{:<15}".format("Thickness:"), self.thickness)

    class Net:
        def __init__(self, netName="", refdes="", pinNumber="", pinName=""):
            self.netName = netName  # 3V3,GND...
            self.refdes = refdes  # U1,R2...
            self.pinNumber = pinNumber  # 1,2,3,A1,B2...
            self.pinName = pinName  # I2C,SDA,SCL...

        def printInfor(self):
            print("\n*******************")
            print("{:<15}".format("Net Name:"), self.netName)
            print("{:<15}".format("Refdes:"), self.refdes)
            print("{:<15}".format("Pin Number:"), self.pinNumber)
            print("{:<15}".format("Pin Name:"), 	self.pinName)


myBoard = AllegroBoard()


def main():
    count = 1
    f = open(FILE_NAME, "r")  # open a stream on alg board file
    line = f.readline()
    while line:
        line_s = line.split("!")
        if line_s[0] == "A":  # header A!
            _status = line_s[1]
            if _status == "NET_NAME_SORT":
                if line_s[2] == "NODE_SORT":
                    _status = STT_NET_1
                else:
                    _status = STT_NET_2

        elif line_s[0] == "J":  # board file
            x = 0

        elif line_s[0] == "S":  # value
            # print(_status)
            if _status == STT_BOARD_INFOR:  # get board infor
                myBoard.InforObj.updateInfor(
                    line_s[1], line_s[2], line_s[3], line_s[4], line_s[5], line_s[6], line_s[7])
                # myBoard.InforObj.printInfor()

            if _status == STT_STACKUP:  # get board stackup
                myBoard.l_layer.append(myBoard.Layer(
                    line_s[1], line_s[2], line_s[3], line_s[4], line_s[5], line_s[6], line_s[7], line_s[8], line_s[9], line_s[10]))

            if _status == STT_NET_1:  # netlist
                myBoard.l_net.append(myBoard.Net(
                    line_s[3], line_s[4], line_s[5], line_s[6]))
            if _status == STT_NET_2:  # reserved
                x = 1
            if _status == STT_PAD:  # padstack
                # to be done
                x = 1
            if _status == STT_DRAWING:  # sub-drawing
                # to be done
                x = 1
            if _status == STT_SYM_NAME:  #
                x = 1
            if _status == STT_PLACEMENT:  #
                x = 1

        line = f.readline()
        count += 1
    f.close()


if __name__ == '__main__':
    main()
    # board infor
    # myBoard.InforObj.printInfor()

    # board stackup
    # for i in myBoard.l_layer:
    #     i.printLayer()
    # print(len(myBoard.l_layer))

    # netlist
    for i in myBoard.l_net:
        i.printInfor()
    print(len(myBoard.l_layer))
