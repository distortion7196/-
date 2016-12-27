package com.company;

public class sdacha {
	 
	    public enum Direction {
	        UP,
	        DOWN,
	        LEFT,
	        RIGHT
	    }
	    public static void main(String[] args)
	    {
	    class Robot {
	        int x;
	        int y;
	        Direction dir;
	 
	        public Robot(int x, int y, Direction dir) {
	            this.x = x;
	            this.y = y;
	            this.dir = dir;
	        }
	 
	        public Direction getDirection() {
	            return dir;
	        }
	 
	        public int getX() {
	            return x;
	        }
	 
	        public int getY() {
	            return y;
	        }
	 
	        public void turnLeft() {
	            if (dir == Direction.UP) {
	                dir = Direction.LEFT;
	            } else if (dir == Direction.DOWN) {
	                dir = Direction.RIGHT;
	            } else if (dir == Direction.LEFT) {
	                dir = Direction.DOWN;
	            } else if (dir == Direction.RIGHT) {
	                dir = Direction.UP;
	            }
	        }
	 
	        public void turnRight() {
	            if (dir == Direction.UP) {
	                dir = Direction.RIGHT;
	            } else if (dir == Direction.DOWN) {
	                dir = Direction.LEFT;
	            } else if (dir == Direction.LEFT) {
	                dir = Direction.UP;
	            } else if (dir == Direction.RIGHT) {
	                dir = Direction.DOWN;
	            }
	        }
	 
	        public void stepForward() {
	            if (dir == Direction.UP) {
	                y++;
	            }
	            if (dir == Direction.DOWN) {
	                y--;
	            }
	            if (dir == Direction.LEFT) {
	                x--;
	            }
	            if (dir == Direction.RIGHT) {
	                x++;
	            }
	        }
	 
	        public void moveRobot(Robot robot, int toX, int toY) {
	            if (robot.getX() > toX) {
	                while (robot.getDirection() != Direction.LEFT) {
	                    robot.turnRight();
	                }
	                while (robot.getX() != toX) {
	                    robot.stepForward();
	                }
	            }
	            if (robot.getX() < toX) {
	                while (robot.getDirection() != Direction.RIGHT) {
	                    robot.turnRight();
	                }
	                while (robot.getX() != toX) {
	                    robot.stepForward();
	                }
	            }
	 
	            if (robot.getY() > toY) {
	                while (robot.getDirection() != Direction.DOWN) {
	                    robot.turnRight();
	                }
	                while (robot.getY() != toY) {
	                    robot.stepForward();
	                }
	            }
	            if (robot.getY() < toY) {
	                while (robot.getDirection() != Direction.UP) {
	                    robot.turnRight();
	                }
	                while (robot.getY() != toY) {
	                    robot.stepForward();
	                }
	            }
	        }
	    }
	 
	    class SmartRobot extends Robot
	    {
	        public SmartRobot(int x, int y, Direction dir)
	        {
	            super(x, y, dir);
	        }
	        public void MoveSmartRobot(Robot r, int toX, int toY)
	        {
	            if (r.getX() < toX & r.getY() < toY)
	            {
	                while (r.getDirection() != Direction.UP) r.turnRight();
	                while (r.getX() < toX & r.getY() < toY)
	                {
	                    if (r.getDirection() == Direction.RIGHT & r.getX() <= toX)
	                    {
	                        if (r.getX() == toX)
	                            r.turnLeft();
	                        r.turnLeft();
	                        r.stepForward();
	                        System.out.println(Integer.toString(r.getX()) + ' ' + Integer.toString(r.getY()));
	                    }
	                    if (r.getDirection() == Direction.UP & r.getY() <= toY)
	                    {
	                        if (r.getY() == toY)
	                            r.turnRight();
	                        r.turnRight();
	                        r.stepForward();
	                        System.out.println(Integer.toString(r.getX()) + ' ' + Integer.toString(r.getY()));
	                    }
	                }
	            }
	        }
	 
	    }
	    
	        SmartRobot r = new SmartRobot(0, 0 , Direction.LEFT);
	        r.MoveSmartRobot(r, 5, 7);
	        System.out.print(Integer.toString(r.getX()) + ' ' + Integer.toString(r.getY()));

	    }
	 
	}
