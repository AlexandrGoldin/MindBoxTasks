using MindboxTaskConsoleLibrary.Domain.Figures;
using MindboxTaskConsoleLibrary.Factories;
using Xunit;

namespace MindBoxTaskConsoleLibrary.xUnitTests
{
    public class TriangleFactoryTests
    {
        private readonly double _sideA=4;
        private readonly double _sideB=5;
        private readonly double _sideC=6;

        [Fact]
        public void GetArea_return_TriangleFactory_NotNull()
        {
            //Arrange
            TriangleFactory triangleFactory = new TriangleFactory(_sideA, _sideB,_sideC);

            // Act
            IFigure figure = triangleFactory.GetArea();

            //Assert
            Assert.NotNull(figure);
        }

        [Fact]
        public void GetArea_return_TriangleFactory_name_area_Equal()
        {
            //Arrange
            var triangleFactory = new TriangleFactory(_sideA, _sideB, _sideC);
            const string name = "Not a right Triangle";
            const double area= 9.922; 

            //Act
            IFigure figure = triangleFactory.GetArea();

            Triangle triangle = new Triangle()
            {
                _name = name,
                Area = area
            };

            //Assert
            Assert.Equal(triangle.Area, figure.GetArea());
            Assert.Equal(triangle._name, figure.Name);
        }
    }
}
