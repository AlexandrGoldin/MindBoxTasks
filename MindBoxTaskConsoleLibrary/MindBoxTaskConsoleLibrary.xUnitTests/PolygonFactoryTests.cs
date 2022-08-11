using MindboxTaskConsoleLibrary.Domain.Figures;
using MindboxTaskConsoleLibrary.Factories;
using Xunit;

namespace MindBoxTaskConsoleLibrary.xUnitTests
{
    public class PolygonFactoryTests
    {
        private readonly int[,] _coord= { {0,0,5,7,5 },{1,5,5,3,1 } };
        private readonly int _n = 5;

        [Fact]
        public void GetArea_return_PolygonFactory_NotNull()
        {
            //Arrange
            PolygonFactory poligonFactory = new PolygonFactory(_n, _coord);

            // Act
            IFigure sut = poligonFactory.GetArea();

            //Assert
            Assert.NotNull(sut);
        }

        [Fact]
        public void GetArea_return_PolygonFactory_name_area_Equal()
        {
            //Arrange
            PolygonFactory poligonFactory = new PolygonFactory(_n, _coord);

            const string name = "Poligon";
            const double area = 24;

            //Act
            IFigure expected = poligonFactory.GetArea();

            Polygon actual = new Polygon()
            {
                _name = name,
                Area = area
            };

            //Assert
            Assert.Equal(actual.Area, expected.GetArea());
            Assert.Equal(actual._name, expected.Name);
        }
    }
}
