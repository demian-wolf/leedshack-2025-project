class DynamicTree {
    constructor(ctx) {
        this.ctx = ctx;
        this.nodeHistory = [];
    }

    draw(fromX, fromY, length, angle, width, depth) {
        if (depth <= 0) return;

        const toX = fromX + Math.cos(angle) * length;
        const toY = fromY + Math.sin(angle) * length;

        this.drawBranch(fromX, fromY, toX, toY, width, depth);
        
        const newParent = { x: toX, y: toY, depth: depth - 1, angle, length, width };
        this.nodeHistory.push(newParent);

        this.createChildren(newParent);
    }

    drawBranch(fromX, fromY, toX, toY, width, depth) {
        this.ctx.save();
        this.ctx.lineWidth = width;
        this.ctx.strokeStyle = this.getColor(depth);
        this.ctx.lineCap = 'round';
        
        this.ctx.beginPath();
        this.ctx.moveTo(fromX, fromY);
        this.ctx.lineTo(toX, toY);
        this.ctx.stroke();
        
        this.ctx.beginPath();
        this.ctx.arc(toX, toY, width / 4, 0, Math.PI * 2);
        this.ctx.fillStyle = '#fff';
        this.ctx.fill();
        
        this.ctx.restore();
    }

    createChildren(parent) {
        if (parent.depth <= 0) return;
        this.draw(parent.x, parent.y, parent.length * 0.65, parent.angle - Math.PI / 6, parent.width * 0.7, parent.depth);
        this.draw(parent.x, parent.y, parent.length * 0.65, parent.angle + Math.PI / 6, parent.width * 0.7, parent.depth);
    }

    getColor(depth) {
        const hue = 30 + (10 - depth) * 8;
        return `hsl(${hue}, 70%, ${50 - depth * 4}%)`;
    }

    static plantAdditionalTree(ctx, trees, remainingDepth, firstTreeEndX) {
        const prevTree = trees[trees.length - 1];
        const lastNode = prevTree.nodeHistory[0];  // Use the root node of the previous tree
        
        const newX = firstTreeEndX + 280; // 280px to the right of the previous tree's end
        const newY = lastNode.y + 100;   // Move the second tree 100px down
        
        const newDepth = remainingDepth;
        
        const newTree = new DynamicTree(ctx);
        newTree.draw(newX, newY, 100, -Math.PI / 2, 30, newDepth);
        return newTree;
    }

}

// Initialize canvas
const canvas = document.getElementById('treeCanvas');
const ctx = canvas.getContext('2d');

// Generate tree function
function generateTree() {
    const totalDepth = parseInt(document.getElementById('treeDepth').value);
    
    // Always redraw the tree when clicking "Generate Tree"
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    
    // Initialize trees array
    let trees = [];
    
    const firstTreeDepth = Math.min(totalDepth, 7);  // First tree gets a maximum depth of 7, or less if remaining depth is smaller
    const firstTree = new DynamicTree(ctx);
    firstTree.draw(50 + 100, canvas.height -170, 100, -Math.PI / 2, 30, firstTreeDepth);
    trees.push(firstTree);

    // Get the end position of the first tree to place the second tree
    const firstTreeEndX = firstTree.nodeHistory[0].x; // The X coordinate of the first tree's root node
    
    // If depth > 7, plant another tree to the right of the first tree with remaining depth
    if (totalDepth > 7) {
        const secondTreeDepth = Math.min(totalDepth - firstTreeDepth, 7);
        const secondTree = DynamicTree.plantAdditionalTree(ctx, trees, secondTreeDepth, firstTreeEndX);
        trees.push(secondTree);
        
        // Get the end position of the second tree to place the third tree
        const secondTreeEndX = secondTree.nodeHistory[0].x;
        
        // If depth > 14, plant a third tree to the right of the second tree
        if (totalDepth > 14) {
            const thirdTreeDepth = Math.min(totalDepth - firstTreeDepth - secondTreeDepth, 7);
            const thirdTree = DynamicTree.plantAdditionalTree(ctx, trees, thirdTreeDepth, secondTreeEndX);
            trees.push(thirdTree);
        }
    }

    if (trees.length > 1) {
        const secondTree = trees[1];
    }
    if (trees.length > 2) {
        const thirdTree = trees[2];
    }

    saveTree(trees);
}

// Save tree to localStorage
function saveTree(trees) {
    const savedTrees = trees.map(tree => tree.nodeHistory);
    localStorage.setItem("savedTrees", JSON.stringify(savedTrees));
}

// Load trees from localStorage
function loadTree() {
    const savedTrees = localStorage.getItem("savedTrees");
    if (savedTrees) {
        const treesData = JSON.parse(savedTrees);
        ctx.clearRect(0, 0, canvas.width, canvas.height);

        treesData.forEach(treeData => {
            const tree = new DynamicTree(ctx);
            treeData.forEach(node => {
                tree.drawBranch(node.x - Math.cos(node.angle) * node.length, node.y - Math.sin(node.angle) * node.length, node.x, node.y, node.width, node.depth);
            });
        });
    }
}

// Reset tree and localStorage
function resetTree() {
    localStorage.removeItem("savedTrees");
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    generateTree();
}

// Event listener to load tree from localStorage on DOMContentLoaded
document.addEventListener("DOMContentLoaded", loadTree);

// Add event listeners for UI controls
document.getElementById('generateButton').addEventListener('click', generateTree);
document.getElementById('resetButton').addEventListener('click', resetTree);
