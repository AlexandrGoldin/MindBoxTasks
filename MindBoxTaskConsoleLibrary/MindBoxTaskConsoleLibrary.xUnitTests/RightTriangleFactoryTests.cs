using MindboxTaskConsoleLibrary.Domain.Figures;
using MindboxTaskConsoleLibrary.Factories.FigureFactories;
using Xunit;

namespace MindBoxTaskConsoleLibrary.xUnitTests
{
    public class RightTriangleFactoryTests
    {
        private readonly double _sideA = 4;
        private readonly double _sideB = 5;
        private readonly double _sideC = 6;

        [Fact]
        public void GetArea_return_RightTriangleFactory_NotNull()
        {
            //Arrange
            RightTriangleFactory rightTriangleFactory = new RightTriangleFactory(_sideA, _sideB, _sideC);

            // Act
            IFigure figure = rightTriangleFactory.GetArea();

            //Assert
            Assert.NotNull(figure);
        }

        [Fact]
        public void GetArea_return_RightTriangleFactory_name_area_Equal()
        {
            //Arrange
            var triangleFactory = new RightTriangleFactory(_sideA, _sideB, _sideC);
            var name = "Right Triangle";
            var area = 9.922; //// 4, 5, 6.

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
